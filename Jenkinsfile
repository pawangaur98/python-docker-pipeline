pipeline {
        agent {
                label 'slave1'
                }
        stages {
                stage ("pull-scm-code") {
                        steps {
                                git branch: 'main', url: 'https://github.com/pawangaur98/python-docker-pipeline.git'
                                }
                        }
                stage ("build-image") {
                        steps {
                                sh 'sudo docker build -t python:$BUILD_TAG .'
                                sh 'sudo docker tag python:$BUILD_TAG pawangaur/python-docker:$BUILD_TAG'
                                }
                        }
		stage ("test") {
			steps {
				sh 'sudo docker run -dit -p 8081:8080 --name web1 pawangaur/python-docker:$BUILD_TAG'
				}
			}
                stage ("test") {
                        steps {
                                sh 'python3 -V'
                                sh 'python3 cp.py'
                                sh 'python3 test.py'
                                }
                        }
                }
        }
