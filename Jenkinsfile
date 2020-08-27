pipeline {
   agent any
   environment {
       registry = "binhdocker/game"
   }
   stages {
       stage('Build') {
           agent {
               docker {
                   image 'python'
               }
           }
           steps {
               // Create our project directory.
               sh 'cd ./'
               sh 'mkdir -p minigame'
               // Copy all files in our Jenkins workspace to our project directory.               
               // Build the app. 
               sh "yum install -y sublime-text"
           }    
       }
       stage('Test') {
           agent {
               docker {
                   image 'python'
               }
           }
           steps {                
               // Create our project directory.
               sh 'cd ./'
               sh 'mkdir -p minigame'
               // Copy all files in our Jenkins workspace to our project directory.               
               // Run Unit Tests.
               sh 'echo "Testing minigame" '           
           }
       }
       stage('Publish') {
           environment {
               registryCredential = 'dockerhub'
           }
           steps{
               script {
                   def appimage = docker.build registry + ":$BUILD_NUMBER"
                   docker.withRegistry( '', registryCredential ) {
                       appimage.push()
                       appimage.push('latest')
                   }
               }
           }
       }
       stage ('Deploy') {
           steps {
               script{
                   def image_id = registry + ":$BUILD_NUMBER"
                   sh 'echo $BUILD_NUMBER'
                   sh "ansible-playbook  playbook.yml  --extra-vars \"image_id=${image_id}\" "
               }
           }
       }
   }
}
