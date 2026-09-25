#include <stdio.h>
#include <stdlib.h>

#include "../include/mystrfunctions.h"
#include "../include/myfilefunctions.h"

int main()
{
    char source[] = "Hello";
    char destination[100];

    char copy[100];
    char limited[100];

    printf("--- Testing String Functions ---\n");

    printf("Length of source: %d\n", mystrlen(source));

    mystrcpy(destination, source);
    printf("After mystrcpy: %s\n", destination);

    mystrncpy(limited, "Operating Systems", 10);
    printf("After mystrncpy: %s\n", limited);

    mystrcpy(copy, "Hello");
    mystrcat(copy, " World");
    printf("After mystrcat: %s\n", copy);

    printf("\n--- Testing File Functions ---\n");

    FILE* file = fopen("test.txt", "w");

    if (file == NULL)
    {
        printf("Could not create test file.\n");
        return 1;
    }

    fprintf(file, "Operating Systems\n");
    fprintf(file, "C programming is useful.\n");
    fprintf(file, "Git and Linux are important.\n");

    fclose(file);

    file = fopen("test.txt", "r");

    if (file == NULL)
    {
        printf("Could not open test file.\n");
        return 1;
    }

    int lines;
    int words;
    int chars;

    if (wordCount(file, &lines, &words, &chars) == 0)
    {
        printf("Lines: %d\n", lines);
        printf("Words: %d\n", words);
        printf("Characters: %d\n", chars);
    }

    char** matches = NULL;

    int match_count = mygrep(
        file,
        "Linux",
        &matches
    );

    printf("Matching lines: %d\n", match_count);

    if (match_count > 0)
    {
        for (int i = 0; i < match_count; i++)
        {
            printf("%s", matches[i]);
            free(matches[i]);
        }

        free(matches);
    }

    fclose(file);

    return 0;
}
