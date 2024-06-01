pipeline{
    
    agent any
   
    tools{
        maven  'Maven 3.9.7'
    }
    stages{
        stage('build'){
            
            steps{
                echo 'compiling the voting app...'
                dir('carts'){
                sh 'mvn compile'
                }
            }
            
        }
    
        stage('test'){
            
            steps{
                sh 'mvn clean test'
            }
            
        }
   
    
        stage(package){
            
            steps{
                sh 'package -DskipTests'
            }
            
        }
    }
}
