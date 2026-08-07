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

## Web deployment

lifelineband.se uses this site. Currently, Loopia is used as the web host.

Configuration on Loopia:

<img width="907" height="355" alt="image" src="https://github.com/user-attachments/assets/a337c1e1-fc53-4fef-99cb-0f9cc1f04c8d" />

<img width="858" height="632" alt="image" src="https://github.com/user-attachments/assets/e1c6ed7e-ac89-4229-acfe-027e7850df6c" />

Configration on Github:

- Settings -> Pages
  - Custom domain: www.lifelineband.se (note that it took a almost a week the first time the site was deployed)
    
