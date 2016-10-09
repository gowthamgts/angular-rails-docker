FROM rails:onbuild

ENV RAILS_ENV production
ENV DB_UN tododbuser
ENV DB_PW password
ENV DB_HOST db
ENV DB_PORT 3306

