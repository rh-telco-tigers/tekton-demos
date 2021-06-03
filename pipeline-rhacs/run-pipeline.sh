tkn pipeline start build-and-deploy \
    -w name=shared-workspace,volumeClaimTemplateFile=03_persistent_volume_claim.yaml \
    -p deployment-name=pipelines-vote-api \
    -p git-url=https://github.com/kskels/pipelines-vote-api.git \
    -p IMAGE=image-registry.openshift-image-registry.svc:5000/rhacs-pipelines/pipelines-vote-api
