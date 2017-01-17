/// <binding BeforeBuild='clean, min' />
/*
This file in the main entry point for defining Gulp tasks and using Gulp plugins.
Click here to learn more. http://go.microsoft.com/fwlink/?LinkId=518007
*/

var gulp = require('gulp'),
	rimraf = require("rimraf"),
	concat = require("gulp-concat"),
	cssmin = require("gulp-clean-css"),
	uglify = require("gulp-uglify");

var webroot = "./wwwroot/";


var paths = {
	js: webroot + "js/**/*.js",
	minJs: webroot + "js/**/*.min.js",
	css: webroot + "css/**/*.css",
	minCss: webroot + "css/**/*.min.css",
	concatJsDest: webroot + "js/site.min.js",
	concatCssDest: webroot + "css/site.min.css"
};

gulp.task("clean:js", function (cb) {
	rimraf(paths.concatJsDest, cb);
});
gulp.task("clean:css", function (cb) {
	rimraf(paths.concatCssDest, cb);
});

gulp.task("min:js", function () {
	return gulp.src([paths.js, "!" + paths.minJs], { base: "." })
		.pipe(concat(paths.concatJsDest))
		.pipe(uglify())
		.pipe(gulp.dest("."));
});

gulp.task("min:css", function () {
	return gulp.src([paths.css, "!" + paths.minCss])
		.pipe(concat(paths.concatCssDest))
		.pipe(cssmin())
		.pipe(gulp.dest("."));
});


gulp.task("clean", ["clean:js", "clean:css"]);
gulp.task("min", ["min:js", "min:css"]);
gulp.task('default', function () {
	// place code for your default task here
});