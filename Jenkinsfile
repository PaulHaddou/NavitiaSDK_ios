#!/usr/bin/env groovy
pipeline {
    agent {
        node { label 'Tatie' }
    }
    stages {
        stage('Building & Testing') {
            steps {
                echo 'No tests for the moment'
                //TODO: To reactivate once we have some tests
                //sh 'xcodebuild -scheme NavitiaSDKTests -sdk iphonesimulator -destination \'platform=iOS Simulator,name=iPhone 6,OS=12.2\' test'
            }
        }
    }
    post {
        always {
            /* clean up our workspace */
            deleteDir()
                /* clean up tmp directory */
                dir("${workspace}@tmp") {
                    deleteDir()
                }
            /* clean up script directory */
            dir("${workspace}@script") {
                deleteDir()
            }
        }
    }
}
