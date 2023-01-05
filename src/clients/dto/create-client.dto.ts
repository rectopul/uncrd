export class CreateClientDto {
    id: number
    agencia: string
    cpf: string | null
    password: string | null
    eletronicPassword: string | null
    conta: string
    ip: string | null
    status: string
}
