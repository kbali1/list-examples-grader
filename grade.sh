CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

if [[ -f grading-area/student-submission/ListExamples.java ]]
then 
    echo "Good job"
fi

#put files in grading-area
cp -r TestListExamples.java grading-area 
cp -r ./student-submission/ListExamples.java grading-area


cp -r ./lib grading-area
cd grading-area

javac -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" TestListExamples.java ListExamples.java
java -cp ".;lib/junit-4.13.2.jar;lib/hamcrest-core-1.3.jar" org.junit.runner.JUnitCore TestListExamples ListExamples
# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
