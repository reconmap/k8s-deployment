
deploy:
	kubectl apply -f manual/deployment.yaml
	kubectl apply -f manual/service.yaml

clean:
	kubectl delete service,deployment reconmap-web-frontend

convert:
	kompose convert -f ../api/docker-compose.yml -o generated

