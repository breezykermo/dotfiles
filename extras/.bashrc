# Load .bashrc and other files...
for file in ~/.{bash_prompt,aliases,functions,path,dockerfunc-jessfraz,extra,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file
