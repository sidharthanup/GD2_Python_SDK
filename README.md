# GD2_Python_SDK

GD2_Python_SDK generates client libraries from an OpenAPI spec 3 api definition. The code generator used is [openapi-generator](https://github.com/OpenAPITools/openapi-generator) which is a fork project of swagger-codegen. Care must be taken when defining the api under OpenAPI spec 3 because the swagger parser is still under active development and definitions especially ones which use external refs must be written carefully. Also the multiple yaml files must be in the same directory as placing the yaml/json files in multiple directories will produce errors and is not supported by the parser as of now.  

# Documentation
  * [Client library Generation](https://github.com/sidharthanup/GD2_Python_SDK/blob/master/docs/client_library_generation.md)
  * [Library usage](https://github.com/sidharthanup/GD2_Python_SDK/blob/master/docs/library_usage.md)
  
