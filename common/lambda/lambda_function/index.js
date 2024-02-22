exports.handler = async (event) => {
    console.log("Hello, world! This is a dummy Lambda function in Node.js.");
    
    // Retorno un mensaje o un objeto simple
    return {
        statusCode: 200,
        body: JSON.stringify({ message: 'This is a dummy response' }),
    };
};
