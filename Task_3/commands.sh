cd ~  # Navigate to home directory
mkdir git_started
cd git_started
#git init in git_started directory
mkdir .git
mkdir .git/objects
mkdir .git/refs
mkdir .git/refs/heads
touch .git/HEAD
echo "ref: refs/heads/master" > .git/HEAD
touch .git/config
#Create the hello.txt file
echo "Hello Git :)" > hello.txt
#git add and git commit the file
#the object ID for the content of hello.txt
git hash-object -w hello.txt
#stage the file
git update-index --add --cacheinfo 100644 9645afea43bccdfab1782b1c817fa5947a2c0b69 hello.txt
git ls-files # to check if the file staged
git write-tree #to take picture
git commit-tree 0e6c0be28b6375cb807a96633ea72c0ce909d1fa -m "greatest commit ever"  # to commit tree
#tag the commit
git tag V1 d928d906e6f42b137c7257a5f27c0b429ff01344
