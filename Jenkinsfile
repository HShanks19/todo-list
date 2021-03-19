pipeline{
        agent any
        stages{
            stage('Install Dependencies'){
                steps{
                      python3 -m venv venv
                      source venv/bin/activate
                      pip install -r 'requirements.txt'
                      pip install pytest pytest-cov
                      export DATABASE_URI
                      export SECRET_KEY
                }
            }
            stage('Test') {
                    steps {
                      python3 -m pytest --cov=application --junitxml=junit.xml --cov-report=xml
                    }
                }
            stage('Deploy') { 
                    steps {
                      python3 create.py
                      python3 app.py
                    }
                }
        }
}
