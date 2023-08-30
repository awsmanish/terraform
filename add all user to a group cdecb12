resource "aws_iam_user" "user01" {
  name = "m1"
}

resource "aws_iam_user" "user02" {
  name = "m2"
}

resource "aws_iam_user" "user03" {
  name = "m3"
}

resource "aws_iam_user" "user04" {
  name = "m4"
}

resource "aws_iam_user" "user05" {
  name = "m5"
}

resource "aws_iam_group" "group" {
  name = "cdecb12"
}

resource "aws_iam_group_membership" "users-add" {
  name = "cdecb12-group"

  users = [
    aws_iam_user.user01.name,
    aws_iam_user.user02.name,
    aws_iam_user.user03.name,
    aws_iam_user.user04.name,
    aws_iam_user.user05.name,
  ]

  group = aws_iam_group.group.name
}


resource "aws_iam_user_policy_attachment" "policy1" {
  user       = aws_iam_user.user01.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_user_policy_attachment" "policy2" {
  user       = aws_iam_user.user01.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}


resource "aws_iam_group_policy_attachment" "policy1" {
  group      = aws_iam_group.group.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_group_policy_attachment" "policy2" {
  group      = aws_iam_group.group.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}





