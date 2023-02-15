while true; do kubectl get pods | grep -iv running; sleep 2; done
