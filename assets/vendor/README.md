# Locally hosted dependencies

These pinned files keep the shared layout independent of third-party CDNs at
runtime. The existing SRI hashes in `_config.yml` still verify jQuery and MDB.

- jQuery 3.6.0: https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js
- MDB Free 4.20.0 (CSS, JS, CSS-referenced overlays/arrows):
  https://www.npmjs.com/package/mdbootstrap/v/4.20.0
- Roboto v51, Roboto Slab v36, Material Icons v145: the Google Fonts stylesheet
  for Roboto 300/400/500/700, Roboto Slab 100/300/400/500/700 and Material Icons,
  fetched with a Chrome user agent on 2026-10-28. All WOFF2 files and Unicode
  subsets are retained; URLs in `fonts/google-fonts.css` are relative and use
  `font-display: swap`. Font licenses are included in `fonts/`.

The smaller `assets/fonts/profile-*.woff2` files contain only the navigation and
social-link icons already bundled with the theme. Full icon fonts remain as
fallbacks for other icons. To regenerate those subsets and the optimized portrait,
run `python3 bin/optimize-profile-assets` with ImageMagick, fonttools and brotli
installed. The original portrait is preserved as `assets/img/gcqi_tw.jpg`.

`math: false` and `masonry: false` in a page's front matter opt out of the
corresponding scripts. Zoom, badge, code-copy and notebook scripts are included
only when the rendered page uses their elements.
