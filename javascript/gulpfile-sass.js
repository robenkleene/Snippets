// devDependencies
var gulp = require('gulp');
var sass = require('gulp-sass');

// Built-in
var path = require('path');

var paths = {
  src: './src/',
  dest: './dist/'
};

paths.sass = {
  src: path.join(paths.src, 'sass'),
  dest: path.join(paths.dest, 'css')
};

var globs = {
  sass: {
    src: path.join(paths.sass.src, '**/*.scss')
  }
};

gulp.task('sass', function () {
  return gulp.src(globs.sass.src)
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest(paths.sass.dest));
});

gulp.task('watch', ['sass'], function () {
  gulp.watch(globs.sass.src, ['sass']);
});

gulp.task('default', ['sass']);
