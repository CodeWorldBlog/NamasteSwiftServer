import Vapor

func routes(_ app: Application) throws {
    app.get("auth") { req async -> LoginResponse in
        let username: String? = req.query["username"]
        let userpwd: String? = req.query["password"]
        if username == "admin" && userpwd == "testadmin" {
            return LoginResponse(isSuccess: true, error: [:])
        }
        return LoginResponse(isSuccess: false, error: ["Login_001": "Inavlid Username & Password"])
    }
}


