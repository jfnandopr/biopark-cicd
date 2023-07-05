package my.grails.app

import io.micrometer.core.annotation.Timed

@Timed
class MessageController {

    def index() { 
        render "Welcome Grails App!"
    }
}
