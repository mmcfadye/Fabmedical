host="fabmedical-603181.documents.azure.com"
username="fabmedical-603181"
password="gIzyKVUQQIlKSr4fWPJM1cnehSevnYnpF3U7wPVIKwCktNsSzSx2s2fSrSeNwv9kTDiTLsnkaJm2Qxk1D7VN3w=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done