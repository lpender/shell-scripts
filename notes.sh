note () {
	echo `date` `git rev-parse --abbrev-ref HEAD` $1 >> .notes
}

notes () {
	cat .notes
}
