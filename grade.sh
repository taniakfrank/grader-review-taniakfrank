CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'
cd student-submission
pwd
ls
file= find ListExamples.java
echo $file
if [ ! -f  'ListExamples.java' ]
then

    exit

fi

echo "successfuly using the right file"
cd ..
ls
cp TestListExamples.java grading-area/
cp Server.java grading-area/
cp GradeServer.java grading-area/
cp student-submission/ListExamples.java grading-area/
cd grading-area/
pwd
ls
javac -cp $CPATH TestListExamples.java GradeServer.java Server.java ListExamples.java
echo "javac correct"
java -cp $CPATH org.junit.runner.JUnitcore TestListExamples


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
