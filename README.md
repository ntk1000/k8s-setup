# k8s-setup

## todo

* separate sg of front and back -> elb sg 
* elb integration -> service type:LoadBalancer 
* 下記理由によりawsでのk8sを諦める
	* ecr regionまたぐと使えない(ec2 on asia -> ecr on us つながらない)
	* auto scaleしない

k8s setup on aws

1. aws IAM role
1. source env.sh
1. curl -sS https://get.k8s.io | bash or ./get_k8s_io.sh

``` 
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "ec2:*",
            "Effect": "Allow",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "elasticloadbalancing:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "autoscaling:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "cloudwatch:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": "iam:*",
            "Resource": "*"
        }
    ]
}
```


