cc="`head -n1 conf-cc`"
systype="`cat systype`"

cat warn-auto.sh
cat env
echo exec "$cc" '-c ${1+"$@"}'
