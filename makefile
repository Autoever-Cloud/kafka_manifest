
all:
	-kubectl delete -f kafka/kraft.yaml
	-kubectl delete pvc --all -n kafka
	-kubectl delete -f localpath/pv.yaml


again:
	-kubectl apply -f localpath
	-kubectl apply -f kafka

