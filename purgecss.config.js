// Named CommonJS exports also work with CLI versions that load this file via
// dynamic import(), rather than require(). Otherwise those versions silently
// see only a "default" property and skip CSS cleanup.
exports.content = ["_site/**/*.html", "_site/**/*.js"];
exports.css = ["_site/assets/css/*.css"];
exports.output = "_site/assets/css/";
exports.skippedContentGlobs = ["_site/assets/**/*.html"];
