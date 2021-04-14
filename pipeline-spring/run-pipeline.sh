tkn pipeline start build-and-deploy-spring-app \
    -w name=shared-workspace,volumeClaimTemplateFile=02_persistent_volume_claim.yaml \
    -w name=maven-settings,emptyDir="" \
    -p deployment-name=rest-http-example \
    -p git-url=https://github.com/snowdrop/rest-http-example \
    -p IMAGE=image-registry.openshift-image-registry.svc:5000/tekton-spring-dev/rest-http-example
