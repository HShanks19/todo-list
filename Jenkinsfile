pipeline{
        agent any
        environment{
                VERSION = "1.${BUILD_ID}"
                DATABASE_URI = credentials("DATABASE_URI")
                SECRET_KEY = credentials("SECRET_KEY")
            }
        stages{
            stage('Test') {
                    steps {
                      sh "bash test.sh"
                    }
                }
            stage('Deploy') { 
                    steps {
                        sh "bash jenkins/deployfile.sh"
                        sh "docker exec todo-app python3 create.py"
                    }
                }
        }
        post {
        always {
            junit 'junit.xml'
            cobertura coberturaReportFile: 'coverage.xml', failNoReports: false
        }
    }
}
