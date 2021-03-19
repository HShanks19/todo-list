pipeline{
        agent any
        stages{
            stage('Install Dependencies'){
                steps{
                      sh 'python3 -m venv venv'
                      sh 'source venv/bin/activate'
                      sh 'pip install -r requirements.txt'
                      sh 'pip install pytest pytest-cov'
                      sh 'export DATABASE_URI'
                      sh 'export SECRET_KEY'
                }
            }
            stage('Test') {
                    steps {
                      sh 'python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml'
                    }
                }
            stage('Deploy') { 
                    steps {
                      sh 'python3 create.py'
                      sh 'python3 app.py'
                    }
                }
        }
}
