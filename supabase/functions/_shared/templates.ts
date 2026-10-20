/**
 * Branded e-mail templates for Swadharma IAS.
 *
 * The HTML is table based with inline styles, because that is what mail
 * clients (Gmail, Outlook, Apple Mail) actually render reliably. Every
 * template returns the plain text twin of the same message.
 */

export interface EmailTemplate {
  subject: string;
  html: string;
  text: string;
}

const BRAND = {
  indigo: '#4F46E5',
  indigoDark: '#3730A3',
  violet: '#7C3AED',
  ink: '#0B1120',
  body: #334155,
  muted: #64748B,
  border: '#E2E8F0',
  surface: '#F8FAFC',
};

const APP_URL = 'https://swadharmaias.in';

/** Escapes the few characters that would break out of an HTML text node. */
const escapeHtml = (value: string): string =>
  value
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;');

/** Shared shell: gradient header, white body, footer. */
const layout = (heading: string, intro: string, code: string, note: string): string => `<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>${escapeHtml(heading)}</title>
  </head>
  <body style="margin:0;padding:0;background-color:${BRAND.surface};font-family:'Segoe UI',Roboto,Helvetica,Arial,sans-serif;color:${BRAND.body};">
    <table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="background-color:${BRAND.surface};padding:32px 12px;">
      <tr>
        <td align="center">
          <table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="max-width:560px;background-color:#ffffff;border:1px solid ${BRAND.border};border-radius:20px;overflow:hidden;">
            <tr>
              <td style="background:linear-gradient(135deg,${BRAND.indigo} 0%,${BRAND.violet} 55%,#2563EB 100%);padding:28px 32px;">
                <p style="margin:0;font-size:13px;letter-spacing:0.18em;text-transform:uppercase;color:rgba(255,255,255,0.75);">Swadharma IAS</p>
                <h1 style="margin:8px 0 0;font-size:22px;line-height:1.35;color:#ffffff;font-weight:700;">${escapeHtml(heading)}</h1>
              </td>
            </tr>
            <tr>
              <td style="padding:32px;">
                <p style="margin:0 0 20px;font-size:15px;line-height:1.7;color:${BRAND.body};">${intro}</p>
                <table role="presentation" width="100%" cellpadding="0" cellspacing="0" style="margin:0 0 24px;">
                  <tr>
                    <td align="center" style="padding:20px 16px;background-color:${BRAND.surface};border:1px solid ${BRAND.border};border-radius:14px;">
                      <p style="margin:0 0 8px;font-size:11px;letter-spacing:0.16em;text-transform:uppercase;color:${BRAND.muted};">Your code</p>
                      <p style="margin:0;font-family:'SFMono-Regular',Consolas,'Liberation Mono',Menlo,monospace;font-size:34px;line-height:1.1;letter-spacing:10px;font-weight:700;color:${BRAND.indigoDark};">${escapeHtml(code)}</p>
                    </td>
                  </tr>
                </table>
                <p style="margin:0 0 12px;font-size:14px;line-height:1.7;color:${BRAND.body};">${note}</p>
                <p style="margin:0;font-size:13px;line-height:1.7;color:${BRAND.muted};">If you did not request this code, you can safely ignore this e-mail — no changes are made to your account.</p>
              </td>
            </tr>
            <tr>
              <td style="padding:20px 32px;background-color:${BRAND.surface};border-top:1px solid ${BRAND.border};">
                <p style="margin:0 0 6px;font-size:13px;font-weight:600;color:${BRAND.ink};">Swadharma IAS</p>
                <p style="margin:0;font-size:12px;line-height:1.6;color:${BRAND.muted};">Free UPSC Prelims practice — timed papers, official marking scheme, detailed explanations.<br />Practice at ${APP_URL}</p>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
  </body>
</html>`;

/** Code that proves the address belongs to the aspirant. */
export const verifyEmailTemplate = (options: { code: string; name?: string }): EmailTemplate => {
  const name = options.name ? options.name.trim() : '';
  const greeting = name ? `Hi ${escapeHtml(name)},` : 'Hi,';

  return {
    subject: 'Your Swadharma IAS verification code',
    html: layout(
      'Verify your e-mail address',
      `${greeting} welcome to Swadharma IAS. Enter the code below to activate your account and unlock the dashboard, the exam papers and your attempt history.`,
      options.code,
      'This code expires in <strong>10 minutes</strong> and can be used <strong>5 times</strong> at most.',
    ),
    text: [
      'Verify your Swadharma IAS e-mail address',
      name ? `Hi ${name},` : 'Hi,',
      'Enter the code below to activate your account and unlock the dashboard, the exam papers and your attempt history.',
      '',
      `Your verification code: ${options.code}`,
      'The code expires in 10 minutes and can be used 5 times at most.',
      'If you did not request this code, you can safely ignore this e-mail.',
      '',
      'Swadharma IAS — practice at ' + APP_URL,
    ].join('\n'),
  };
};

/** Code that allows a password to be replaced without an old password. */
export const resetPasswordTemplate = (options: { code: string; name?: string }): EmailTemplate => {
  const name = options.name ? options.name.trim() : '';
  const greeting = name ? `Hi ${escapeHtml(name)},` : 'Hi,';

  return {
    subject: 'Your Swadharma IAS password reset code',
    html: layout(
      'Reset your password',
      `${greeting} we received a request to reset the password of your Swadharma IAS account. Enter the code below on the reset page, then choose a new password.`,
      options.code,
      'This code expires in <strong>10 minutes</strong> and can be used <strong>5 times</strong> at most.',
    ),
    text: [
      'Reset your Swadharma IAS password',
      name ? `Hi ${name},` : 'Hi,',
      'Enter the code below on the reset page, then choose a new password.',
      '',
      `Your password reset code: ${options.code}`,
      'The code expires in 10 minutes and can be used 5 times at most.',
      'If you did not request this reset, you can safely ignore this e-mail — no changes are made to your account.',
      '',
      'Swadharma IAS — practice at ' + APP_URL,
    ].join('\n'),
  };
};
