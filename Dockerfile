FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN javac -d bin src/*.java

CMD ["java", "-cp", "bin", "Main"]
