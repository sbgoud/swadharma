#!/usr/bin/env bash
# TEMPORARY visual-QA harness. Mocks the auth context and the exam service so
# the signed-in screens can be rendered without a live session.
#
#   scripts/mock-preview.sh apply    → patch the sources and build
#   scripts/mock-preview.sh restore  → put the real sources back
set -euo pipefail

cd "$(dirname "$0")/.."

SERVICES=src/services/examService.js
AUTH=src/context/AuthContext.jsx
MOCK=src/services/examService.mock.js
BACKUP=/tmp/kilo/mock-backup

case "${1:-apply}" in
  apply)
    # git is the source of truth for the two mocked files.
    git checkout -- "$SERVICES" "$AUTH"
    rm -f "$MOCK"

    cat > "$MOCK" <<'EOF'
export const normalizeResult = (raw) => {
  if (!raw) return null;
  const total = Number(raw.total ?? 0);
  const score = Number(raw.score ?? 0);
  const startedAt = raw.started_at ?? null;
  const submittedAt = raw.submitted_at ?? null;
  const timeTakenMinutes =
    startedAt && submittedAt
      ? Math.max(0, Math.round((new Date(submittedAt).getTime() - new Date(startedAt).getTime()) / 60000))
      : null;
  return {
    id: raw.attempt_id ?? raw.id ?? null,
    score,
    maxScore: Number(raw.max_score ?? total * 2),
    total,
    correct: Number(raw.correct ?? 0),
    incorrect: Number(raw.incorrect ?? 0),
    unanswered: Number(raw.unanswered ?? 0),
    percentage: Number(raw.percentage ?? (total ? (score / (total * 2)) * 100 : 0)),
    startedAt,
    submittedAt,
    timeTakenMinutes,
    durationMinutes: Number(raw.duration_minutes ?? 120),
    config: raw.config ?? {},
    details: Array.isArray(raw.details) ? raw.details : [],
  };
};
EOF

    cat > "$SERVICES" <<'EOF'
/* TEMPORARY MOCK for visual QA only. */
import { normalizeResult as realNormalize } from './examService.mock';

const SUBJECTS = [
  { slug: 'history', name: 'History', question_count: 1005, description: 'Indian and world history from the Indus Valley to the present.' },
  { slug: 'geography', name: 'Geography', question_count: 1002, description: 'Physical, human and economic geography.' },
  { slug: 'polity', name: 'Polity', question_count: 1007, description: 'Constitution of India, governance, institutions and federalism.' },
  { slug: 'economy', name: 'Economy', question_count: 1045, description: 'Indian economy, monetary policy and fiscal basics.' },
  { slug: 'environment', name: 'Environment', question_count: 1016, description: 'Ecology, biodiversity, pollution, climate change and governance.' },
  { slug: 'science_tech', name: 'Science & Technology', question_count: 1014, description: 'Biotechnology, space, defence, quantum and emerging technology.' },
  { slug: 'art_culture', name: 'Art & Culture', question_count: 1017, description: 'Indian art, architecture, literature, dance, music and cinema.' },
  { slug: 'current_affairs', name: 'Current Affairs', question_count: 1036, description: 'Recent national and international affairs, indices and awards.' },
];

const day = (n) => new Date(Date.now() - n * 86400000).toISOString();

const ATTEMPTS = [
  { id: 'a1', attempt_id: 'a1', total: 100, score: 132, started_at: day(1), submitted_at: day(1), config: { subject_slugs: ['polity', 'history', 'economy'] } },
  { id: 'a2', attempt_id: 'a2', total: 100, score: 108, started_at: day(4), submitted_at: day(4), config: { subject_slugs: ['polity', 'history', 'economy'] } },
  { id: 'a3', attempt_id: 'a3', total: 50, score: 41, started_at: day(8), submitted_at: day(8), config: { subject_slugs: ['geography', 'environment'] } },
  { id: 'a4', attempt_id: 'a4', total: 100, score: 94, started_at: day(13), submitted_at: day(13), config: { subject_slugs: ['polity', 'history', 'economy'] } },
  { id: 'a5', attempt_id: 'a5', total: 50, score: 46, started_at: day(19), submitted_at: day(19), config: { subject_slugs: ['science_tech', 'art_culture'] } },
  { id: 'a6', attempt_id: 'a6', total: 20, score: null, started_at: day(0), submitted_at: null, config: { subject_slugs: ['current_affairs'] } },
];

const DETAILS = [
  {
    question_id: 'q1',
    position: 1,
    question_text: 'Which Article of the Constitution of India guarantees the right to life and personal liberty?',
    options: [
      { label: 'A', option_text: 'Article 21 — Right to Life and Personal Liberty' },
      { label: 'B', option_text: 'Article 19 — Right to Freedom of Speech' },
      { label: 'C', option_text: 'Article 32 — Right to Constitutional Remedies' },
      { label: 'D', option_text: 'Article 14 — Right to Equality before Law' },
    ],
    correct_label: 'A',
    selected_label: 'A',
    is_correct: true,
    explanation: 'Article 21 states that no person shall be deprived of his life or personal liberty except according to procedure established by law.',
    source: 'Laxmikanth, Part III',
    year: 2024,
    subject: 'Polity',
    difficulty: 'medium',
  },
  {
    question_id: 'q2',
    position: 2,
    question_text: 'Which of the following pairs is correctly matched?',
    options: [
      { label: 'A', option_text: 'Srinagar — Kullu' },
      { label: 'B', option_text: 'Shimla — Chamba' },
      { label: 'C', option_text: 'Dehradun — Mandi' },
      { label: 'D', option_text: 'Ooty — Kodaikanal' },
    ],
    correct_label: 'B',
    selected_label: 'D',
    is_correct: false,
    explanation: 'Shimla is the winter capital of Himachal Pradesh and is paired with Chamba.',
    source: 'NCERT Class 11',
    year: 2023,
    subject: 'History',
    difficulty: 'easy',
  },
  {
    question_id: 'q3',
    position: 3,
    question_text: 'The ratio of the value of exports to imports indicates the state of the balance of trade.',
    options: [
      { label: 'A', option_text: 'Trade deficit' },
      { label: 'B', option_text: 'Trade surplus' },
      { label: 'C', option_text: 'Equal trade' },
      { label: 'D', option_text: 'None of these' },
    ],
    correct_label: 'B',
    selected_label: null,
    is_correct: false,
    explanation: 'A trade surplus exists when exports exceed imports in value.',
    source: 'Economic Survey',
    year: 2024,
    subject: 'Economy',
    difficulty: 'medium',
  },
];

export const normalizeResult = (raw) => realNormalize(raw);
export const fetchSubjectCounts = async () => SUBJECTS;
export const startExam = async () => ({ attempt_id: 'a6' });
export const fetchAttemptQuestions = async () => ({
  attempt_id: 'a6',
  duration_minutes: 24,
  questions: Array.from({ length: 12 }).map((_, i) => ({
    id: 'q' + i,
    question_text: 'Which Article of the Constitution of India guarantees the right to life and personal liberty?',
    options: [
      { label: 'A', option_text: 'Article 21 — Right to Life and Personal Liberty' },
      { label: 'B', option_text: 'Article 19 — Right to Freedom of Speech' },
      { label: 'C', option_text: 'Article 32 — Right to Constitutional Remedies' },
      { label: 'D', option_text: 'Article 14 — Right to Equality before Law' },
    ],
    subject: 'Polity',
    category: 'Fundamental Rights',
    difficulty: 'medium',
    source: 'Laxmikanth',
    year: 2024,
  })),
});
export const submitExam = async () => realNormalize({ attempt_id: 'a6', score: 18, total: 6, correct: 4, incorrect: 1, unanswered: 1, started_at: day(0), submitted_at: new Date().toISOString(), duration_minutes: 24, config: {}, details: DETAILS });
export const fetchAttemptResult = async () => realNormalize({
  attempt_id: 'a1', score: 132, total: 100, correct: 68, incorrect: 30, unanswered: 2,
  started_at: day(1), submitted_at: day(1), duration_minutes: 120,
  config: { subject_slugs: ['polity', 'history', 'economy'] },
  details: DETAILS,
});
export const fetchMyAttempts = async () => ATTEMPTS;
export const fetchProfile = async () => ({ id: 'u1', full_name: 'Ananya Rao', email: 'ananya@example.com', email_verified: true, created_at: day(30) });
export const ensureProfile = async () => null;
export const updateProfileName = async () => ({ data: null, error: null });
EOF

    python3 - <<'PY'
import pathlib
p = pathlib.Path('src/context/AuthContext.jsx')
t = p.read_text()
old = "export const AuthProvider = ({ children }) => {\n  const [user, setUser] = useState(null);"
new = """export const AuthProvider = ({ children }) => {
  /* eslint-disable react-hooks/rules-of-hooks */
  if (import.meta.env.VITE_MOCK_AUTH === '1') {
    return (
      <AuthContext.Provider
        value={{
          user: { id: 'u1', email: 'ananya@example.com', user_metadata: { full_name: 'Ananya Rao' } },
          profile: { id: 'u1', full_name: 'Ananya Rao', email: 'ananya@example.com', email_verified: true },
          loading: false,
          profileLoading: false,
          emailVerified: true,
          signOut: async () => {},
          setProfile: () => {},
          refreshProfile: async () => null,
        }}
      >
        {children}
      </AuthContext.Provider>
    );
  }
  /* eslint-enable react-hooks/rules-of-hooks */
  const [user, setUser] = useState(null);"""
assert old in t, 'AuthProvider anchor not found'
p.write_text(t.replace(old, new))
print('auth patched')
PY

    VITE_MOCK_AUTH=1 npm run build 2>&1 | tail -2
    echo "mock applied"
    ;;

  restore)
    git checkout -- "$SERVICES" "$AUTH"
    rm -f "$MOCK"
    git status --short -- "$SERVICES" "$AUTH" "$MOCK"
    echo "mock restored"
    ;;

  *)
    echo "usage: $0 apply|restore" >&2
    exit 1
    ;;
esac
