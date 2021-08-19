while true
do
  sleep 3
  mongo --eval "printjson(rs.initiate())"
  if [ $? -eq 0 ];then
          break
  fi
done

