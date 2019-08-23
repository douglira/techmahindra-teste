# Tech Mahindra Teste

Backend em **NodeJS** com banco de dados NoSQL **MongoDB**.

Aplicação hospedada na **Digital Ocean** por meio do **Docker/Docker Machine/Docker Swarm**

## Endpoints

> POST /api/auth/sign_up

_BODY_
```javascript
{
  "nome": "string",
	"email": "string",
	"senha": "string",
	"telefones": [
		{
			"numero": "string",
			"ddd": "string"
		}
	]
}
```

> POST /api/auth/sign_in

_BODY_
```javascript
{
	"email": "string",
	"senha": "string",
}
```

> GET /api/usuarios/:usuarioId
_HEADER=Authorization(Bearer)_
