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
