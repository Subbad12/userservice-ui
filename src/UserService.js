import axios from 'axios'

const USERS_REST_API_URL = 'http://localhost:8080/profile/user/getUsers?pageNumber=2&size=40&sortBy=age';

class UserService {

    getUsers(){
        return axios.get(USERS_REST_API_URL);
    }
}

export default new UserService();