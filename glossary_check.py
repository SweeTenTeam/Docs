import csv
import re
import sys
import argparse

def get_glossary_terms(csv_path='gloss.csv'):
    """Extract terms from the glossary CSV file."""
    terms = []
    try:
        with open(csv_path, 'r', encoding='utf-8') as file:
            csv_reader = csv.reader(file, delimiter=';')
            next(csv_reader) 
            for row in csv_reader:
                if row:  
                    term = row[0].strip('"').strip().lower()
                    terms.append(term)
    except FileNotFoundError:
        print(f"Error: Could not find {csv_path}")
        return []
    except Exception as e:
        print(f"Error reading CSV file: {e}")
        return []
    
    print("Available glossary terms:")
    print(terms)
    return terms

def check_glossary_usage(typst_path, csv_path='gloss.csv'):
    """Check if all glossary function calls in the Typst document use valid terms."""
    valid_terms = get_glossary_terms(csv_path)
    
    try:
        with open(typst_path, 'r', encoding='utf-8') as file:
            content = file.read()
            
            glossary_terms = re.findall(r'#glossary\("([^"]+)"\)', content)
            
            invalid_terms = set() 
            for term in glossary_terms:
                if term.lower() not in valid_terms:
                    invalid_terms.add(term) 
            
            invalid_terms = sorted(list(invalid_terms))
            
            if invalid_terms:
                print("\nInvalid glossary terms found:")
                for term in invalid_terms:
                    print(f"- '{term}' is not in the glossary")
            else:
                print("\nAll glossary terms are valid!")
                
            print(f"\nTotal glossary terms used: {len(glossary_terms)}")
            print(f"Unique invalid terms: {len(invalid_terms)}")
            
    except FileNotFoundError:
        print(f"Error: Could not find {typst_path}")
    except Exception as e:
        print(f"Error reading Typst file: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Check glossary terms in a Typst document.')
    parser.add_argument('file_path', nargs='?', 
                       default='documents/2-RTB/Documentazione_Esterna/Analisi_dei_Requisiti.typ',
                       help='Path to the Typst file to check (default: Analisi_dei_Requisiti.typ)')
    parser.add_argument('--csv', default='gloss.csv',
                       help='Path to the glossary CSV file (default: gloss.csv)')
    
    args = parser.parse_args()
    
    check_glossary_usage(args.file_path, args.csv)


    #usage--> 
    # 
    # python glossary_check.py path/to/your/file.typ
    # python glossary_check.py --csv path/to/glossary.csv path/to/your/file.typ
    # python glossary_check.py  # uses default paths
