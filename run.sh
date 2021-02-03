docker build -t my-debugger .
docker run \
  -p 3000:3000 \
  -p 9229:9229 \
  my-debugger

curl -i \
  -X POST \
  -d '{"value1": "120", "value2": "10"}' \
  http://localhost:3000

curl -i \
  -X POST \
  -d '{"value1": "30", "value2": "22"}' \
  http://192.168.XX.XX:3000