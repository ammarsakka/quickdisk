export default interface UserInterface {
    id: number;
    first_name: string;
    last_name: string;
    username: string;
    password: string;
    salt: string;
    role: string;
    access: string;
    status: string;
    avatar?: null;
}