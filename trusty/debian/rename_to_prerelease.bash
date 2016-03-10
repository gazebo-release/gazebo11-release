if [[ ${#} != 1 ]]; then
    echo "Usage: ${0} <packagename>"
    exit 1
fi

for i in *${1}*; do
    name=${i/.*}
    extension=${i#*.}
    new_file=${name/6/7}.${extension}
    #new_file=${name}-prerelease.${extension}
    echo "$i -> ${new_file}"
    mv $i ${new_file}
done
