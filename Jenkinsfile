pipeline{
        agent any
        stages{
            environment{
                VERSION = "1.${BUILD_ID}"
                DATABASE_URI 
                SECRET_KEY 
            }
            stage('Test') {
                    steps {
                      sh "bash test.sh"
                    }
                }
            stage('Deploy') { 
                    steps {
                      
                    }
                }
        }
}
