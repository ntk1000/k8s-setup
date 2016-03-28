# クラウドプロバイダー名の指定(aws)。 このスクリプトは、AWS だけでなく、
# Google Cloud Engine(gce) や Microsoft Azure(azure)にも対応しているため、
# この変数の指定は必要。
export KUBERNETES_PROVIDER=aws  

# 使用するAZの名前。デフォルトは us-west-2a になっているため、必要に応じて変更。
# なお、使用するリージョンは、このAZ名から判断される。
export KUBE_AWS_ZONE=ap-northeast-1a

# Master と Minon のインスタンスサイズ。デフォルトで t2.micro にはなっているが
# 念のため設定。
# MASTERはt2.micro非推奨
export MASTER_SIZE=t2.micro
export MINION_SIZE=t2.micro

# Minion の台数(作成するインスタンス数)。デフォルトで4台なので、2台にしておいた。
export NUM_MINIONS=2
export NUM_NODES=2

# S3 のバケット名。すでに存在しればそれが使われ、存在しなければ作成される。
# なお、この環境変数を指定しなくても、名前を自動生成してバットを作成してくれる。
export AWS_S3_BUCKET=hmx-k8s

# S3 のリージョン。バケットをスクリプトに生成させる場合に指定する。
export AWS_S3_REGION=ap-northeast-1

export INSTANCE_PREFIX=k8s
