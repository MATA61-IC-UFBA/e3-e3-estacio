/* token.h */

typedef enum {
        ID = 256, 
	      NUM,
	      ARRAY, // 258
	      BOOLEAN, // 259
        KEY_CHAR, // 260
        ELSE, // 261
        FALSE, // 262
        FOR, // 263
        FUNCTION, // 264
        IF, // 265
        INTEGER, // 266
        PRINT, // 267
        RETURN, // 268
        STRING, // 269
        TRUE, // 270
        VOID, // 271
        WHILE, // 272
        LEQ, // 273
        GEQ, // 274
        EQ, // 275
        NEQ, // 276
        AND, // 277
        OR, // 278
	      ERROR,
        CHAR,
        STR
} token_t; 

