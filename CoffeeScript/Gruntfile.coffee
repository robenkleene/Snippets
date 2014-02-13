module.exports = (grunt) ->
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-jade')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-haml')
  grunt.loadNpmTasks('grunt-slim')

  grunt.initConfig
    watch:
      coffee:
        files: 'source/coffee/*.coffee'
        tasks: 'coffee'
      jade:
        files: 'source/jade/**/*.jade'
        tasks: 'jade'
      haml:
        files: 'source/haml/**/*.haml'
        tasks: 'haml'
      slim:
        files: 'source/slim/**/*.slim'
        tasks: 'slim'

    jade:
      options:
        pretty: true
      dist:
        files: [
          expand: true
          cwd: 'source/jade/'
          src: '*.jade'
          dest: 'build/'
          ext: '.html'
        ]

    coffee:
      dist:
        files: [
          expand: true
          cwd: 'source/coffee/'
          src: '*.coffee'
          dest: 'build/js/'
          ext: '.js'
        ]

    haml:
      files:
        expand: true,
        cwd: 'source/haml/'
        src: '*.haml'
        dest: 'build/haml/'
        ext: '.html'

    slim:
      options:
        pretty: true
      files:
        expand: true,
        cwd: 'source/slim/'
        src: '*.slim'
        dest: 'build/slim/'
        ext: '.html'

  grunt.registerTask('default', ['coffee', 'jade', 'haml', 'slim'])