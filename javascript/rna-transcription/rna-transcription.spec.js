// import { toRna } from './rna-transcription';
//
// describe('Transcriptor', () => {
//   test('empty rna sequence', () => {
//     expect(toRna('')).toEqual('');
//   });
//
//   test('transcribes cytosine to guanine', () => {
//     expect(toRna('C')).toEqual('G');
//   });
//
//   test('transcribes guanine to cytosine', () => {
//     expect(toRna('G')).toEqual('C');
//   });
//
//   test('transcribes adenine to uracil', () => {
//     expect(toRna('A')).toEqual('U');
//   });
//
//   test('transcribes thymine to adenine', () => {
//     expect(toRna('T')).toEqual('A');
//   });
//
//   test('transcribes all dna nucleotides to their rna complements', () => {
//     expect(toRna('ACGTGGTCTTAA'))
//       .toEqual('UGCACCAGAAUU');
//   });
//
//   test('correctly handles invalid input', () => {
//     expect(() => toRna('U')).toThrow(new Error('Invalid input DNA.'));
//   });
//
//   test('correctly handles completely invalid input', () => {
//     expect(() => toRna('XXX')).toThrow(new Error('Invalid input DNA.'));
//   });
//
//   test('correctly handles partially invalid input', () => {
//     expect(() => toRna('ACGTXXXCTTAA')).toThrow(new Error('Invalid input DNA.'));
//   });
// });
import { secretHandshake } from './rna-transcription';

describe('Secret Handshake', () => {
  test('binary 1 (decimal 1) is a wink', () => {
    expect(secretHandshake(1)).toEqual(['wink']);
  });

  test('binary 10 (decimal 2) is a double blink', () => {
    expect(secretHandshake(2)).toEqual(['double blink']);
  });

  test('binary 100 (decimal 4) is close your eyes', () => {
    expect(secretHandshake(4)).toEqual(['close your eyes']);
  });

  test('binary 1000 (decimal 8) is jump', () => {
    expect(secretHandshake(8)).toEqual(['jump']);
  });

  test('binary 11 (decimal 3) is wink and double blink', () => {
    expect(secretHandshake(3)).toEqual(['wink', 'double blink']);
  });

  test('binary 10011 (decimal 19) is double blink and wink', () => {
    expect(secretHandshake(19)).toEqual(['double blink', 'wink']);
  });

  test('binary 11111 (decimal 31) is jump, close your eyes, double blink, and wink', () => {
    expect(secretHandshake(31)).toEqual(['jump', 'close your eyes', 'double blink', 'wink']);
  });

  test('text is an invalid secret handshake', () => {
    expect(() => secretHandshake('piggies')).toThrow(new Error('Handshake must be a number'));
  });
});
