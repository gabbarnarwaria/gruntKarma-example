module.exports = (grunt) ->
  grunt.initConfig
    karma:
      unit:
        configFile: "./src/test/resources/karma.conf.coffee"

    coffee:
      compile:
        expand: true
        cwd: 'src/test/coffee/'
        src: '**/*.coffee'
        dest: 'src/test/generated/'
        ext: '.js'

  grunt.loadNpmTasks "grunt-karma"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.registerTask "default", ["coffee", "karma"]
