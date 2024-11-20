resource "aws_iam_user" "iamuser" {
    name = "Dianna"
  
}
resource "aws_iam_group" "name" {
    name = "rse"
  
}
resource "aws_iam_group_membership" "name2" {
    name = "addinuser"
    group = aws_iam_group.name.name
    users = [aws_iam_user.iamuser.name]
  
}