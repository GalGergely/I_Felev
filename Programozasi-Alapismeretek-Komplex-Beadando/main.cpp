#include <iostream>
#include <bits/stdc++.h>

using namespace std;

int main()
{
    int helysegszam, madarfajszam;
    cin >> helysegszam >> madarfajszam;
    int matrix[helysegszam][madarfajszam];
    int osszegek[madarfajszam],db = 0;
    for(int i = 1; i <= helysegszam; i++)
    {
        for(int j = 1; j <= madarfajszam; j++)
        {
            cin >> matrix[i][j];
        }
    }
    int megoldas[madarfajszam];
    double osszeg[madarfajszam], idk[madarfajszam];
    for (int i=1; i<=madarfajszam; i++)
    {
        osszeg[i]=0;
        megoldas[i]=0;
    }
    for (int i = 1; i <= madarfajszam; ++i)
    {
        for (int j = 1; j <= helysegszam; ++j)
        {
            osszeg[i] = osszeg[i] + matrix[j][i];
        }
    }

    for (int i=1; i<=madarfajszam; i++)
    {
        idk[i]=osszeg[i]*0.9;
    }



    db=0;
    for(int i=1; i<=madarfajszam; i++)
    {
        for(int j=1; j<=helysegszam; j++)
        {
            if(matrix[j][i]>idk[i])
            {
                megoldas[db]=i;
                db++;
            }
        }
    }
    cout<<db<<endl;
    for(int i=0; i<=madarfajszam; i++)
    {
        if(megoldas[i]!=0)
        {
            cout<<megoldas[i]<<" ";
        }
    }

    return 0;
}
