function nbclean
	command jupyter nbconvert --clear-output --inplace $argv
end
