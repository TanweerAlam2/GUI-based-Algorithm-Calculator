FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN find src -name "*.java" > sources.txt && javac -d bin @sources.txt

CMD ["java", "-cp", "bin", "Main"]
