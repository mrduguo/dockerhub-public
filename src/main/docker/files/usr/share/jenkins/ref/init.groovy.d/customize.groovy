// https://github.com/samrocketman/jenkins-bootstrap-slack/tree/master/scripts
// http://javadoc.jenkins-ci.org/jenkins/model/Jenkins.html
import jenkins.model.*
import hudson.markup.RawHtmlMarkupFormatter
Jenkins.instance.setNumExecutors(3)
Jenkins.instance.setMarkupFormatter(new RawHtmlMarkupFormatter(false))


def copyFileIfNotExist(File from, File to,copiedFiles){
    if(from.isFile()){
        if(!to.exists()){
            if(!to.parentFile.exists()){
                to.parentFile.mkdirs()
            }
            to.bytes = from.bytes
            println "copied config to $to.absolutePath"
            copiedFiles << to.absolutePath
        }
    }else if(from.isDirectory()){
        from.list().each{
            copyFileIfNotExist(new File(from,it),new File(to,it),copiedFiles)
        }
    }
}
def copiedFiles=[]
copyFileIfNotExist(new File('/usr/share/jenkins/home'),new File('/var/jenkins_home'),copiedFiles)
if(copiedFiles){
    Jenkins.instance.save()
    Jenkins.instance.reload()
}
