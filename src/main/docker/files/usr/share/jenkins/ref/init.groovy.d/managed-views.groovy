import jenkins.model.*
import hudson.model.*
def views=[
        'SANDBOX':'sandbox.*',
]


Jenkins.instance.views.each {view->
    if(views.containsKey(view.viewName)){
        Jenkins.instance.deleteView(view)
    }
}
views.each{name,regex->
    def view = new ListView(name)
    view.includeRegex=regex
    Jenkins.instance.addView(view)
}