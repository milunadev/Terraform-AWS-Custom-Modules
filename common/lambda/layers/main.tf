
resource "aws_lambda_layer_version" "lambda_layer_panda" {
  filename   = "./projects/layers/pandalayer.zip"
  layer_name = "python-panda-layer"
  description = "Layer que contiene librerias panda y numpy "
  compatible_runtimes = ["python3.8","python3.9","python3.12"]
}

resource "aws_lambda_layer_version" "lambda_layer_bi-data" {
  filename   = "./projects/layers/layerBIv4.zip"
  layer_name = "python-BI-data-layer"
  description = "Layer que contiene librerias google-auth, psycopg2 y oath"
  compatible_runtimes = ["python3.8","python3.9","python3.12"]
}