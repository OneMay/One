@echo off
IF EXIST ../official-web/target/NT_Official_Website_Update_v1.0.war (

   @echo [INFO]-------------------------------- 正在复制文件 -----------------------------------
   COPY /Y ..\official-web\target\*.war  ..\tools\jetty\webapps\
   cd ..\tools\jetty
   java -jar start.jar
   DEL /F /Q *.war
) else (
   @echo [INFO]---------------------------------- war包不存在 -------------------------------------
   pause
   exit
)