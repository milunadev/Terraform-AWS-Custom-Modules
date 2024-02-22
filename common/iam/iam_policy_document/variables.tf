

variable "principals" {
  description = "Identifiers debe ser una lista de ARNs de usuarios IAM, roles IAM, cuentas o servicios"
  type = list(object({
    type        = string
    identifiers = list(string)
  }))
  default = [
    {
      type        = "AWS"
      identifiers = ["*"]
    }
  ]
}


variable "policy_actions" {
  type = list(string)
  default = [
        " "
    ]
}

variable "policy_resources" {
  type = list(string)
  default = [""]
}


#EJEMPLO DE PRINCIPALS:

#principals {
#       type        = "Service"
#       identifiers = ["firehose.amazonaws.com"]
#     }

# principals {
#       type        = "AWS"
#       identifiers = [var.trusted_role_arn]
#     }

# EJEMPLO DE INDENTIFIERS: 
# identifiers = ['arn:aws:iam::123456789012:user/UsuarioEspecifico', 'arn:aws:iam::123456789012:role/RolEspecifico'] "


# EJEMPLO DE POLICY ACTIONS
# actions = [
#       "s3:GetObject",
#       "s3:ListBucket",
#     ]


# # EJEMPLO DE POLICY RESOURCES
# resources = [
#       aws_s3_bucket.example.arn,
#       "${aws_s3_bucket.example.arn}/*",
#     ]