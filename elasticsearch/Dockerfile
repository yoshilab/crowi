FROM docker.elastic.co/elasticsearch/elasticsearch:6.3.2

RUN ES_JAVA_OPTS="-Dhttp.proxyHost=proxy.noc.kochi-tech.ac.jp:3128 -Dhttp.proxyPort=3128 -Dhttps.proxyHost=proxy.noc.kochi-tech.ac.jp -Dhttps.proxyPort=3128" elasticsearch-plugin install analysis-kuromoji
