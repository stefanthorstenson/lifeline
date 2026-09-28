# lifeline
Lifeline website.

Access website with this link:
https://stefanthorstenson.github.io/lifeline

## Site structure
The site is plain static HTML/CSS, no build step. Each top-level page is its own folder with an `index.html`, so GitHub Pages serves clean URLs:

- `/` (`index.html`) - landing page (hero + info)
- `/tjanster` (`tjanster/index.html`) - tjänster
- `/lyssna` (`lyssna/index.html`) - lyssna
- `/kontakt` (`kontakt/index.html`) - kontakt / bokningsformulär
- `/galleri` (`galleri/index.html`) - bildgalleri

All pages share `style.css` and `images/` at the repo root; subpages reference them with root-relative paths (`/style.css`, `/images/...`).

## Local development

Two scripts are provided to preview the site locally:

- `./local-serve.sh` - starts a local server at http://localhost:8000/ and opens it in your browser. Safe to run again if already running.
- `./local-stop.sh` - stops the local server.

## Booking email QR code

The booking section on `/` and `/kontakt` has a `mailto:` link that opens a pre-written booking email, and a QR code (`images/qr-bokning.svg`) that encodes the same link for visitors on a computer to scan with their phone.

The QR code is a static image and is not updated automatically. Whenever the `mailto:` link changes, update it identically in both `index.html` and `kontakt/index.html`, then regenerate the QR code from the repo root:

```sh
python3 -m venv /tmp/qr-venv
/tmp/qr-venv/bin/pip install segno
/tmp/qr-venv/bin/python - <<'EOF'
import html, re, segno
page = open('kontakt/index.html', encoding='utf-8').read()
link = html.unescape(re.search(r'href="(mailto:[^"]*)"', page).group(1))
segno.make(link, error='m').save('images/qr-bokning.svg', scale=4, border=4, dark='#000', light='#fff', title='QR-kod för bokningsförfrågan via e-post')
EOF
```

Scan the new code with a phone to check that it opens the expected email.

## Web deployment

lifelineband.se uses this site. Currently, Loopia is used as the web host.

Configuration on Loopia:

<img width="907" height="355" alt="image" src="https://github.com/user-attachments/assets/a337c1e1-fc53-4fef-99cb-0f9cc1f04c8d" />

<img width="858" height="632" alt="image" src="https://github.com/user-attachments/assets/e1c6ed7e-ac89-4229-acfe-027e7850df6c" />

Configration on Github:

- Settings -> Pages
  - Custom domain: www.lifelineband.se (note that it took a almost a week the first time the site was deployed)
    
